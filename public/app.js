function something()
{

	var x = window.localStorage.getItem('aaa'); // x = hh['bbb']

	x = x * 1 + 1; // x = x + 1

	window.localStorage.setItem('aaa', x); // hh['bbb'] = x

	alert(x);
}

function add_to_cart(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	update_orders_input();
	update_orders_button();
}

}
 
function update_orders_input()
{
 	var orders = cart_get_orders();
 	$('#orders_input').val(orders);
}

function cart_get_number_of_items()
{
	var cnt = 0;

	for(var i = 0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i); // getting a key
		var value = window.localStorage.getItem(key); // getting a value  (in ruby: hh[key] = x)

		if(key.indexOf('product_') == 0)
		{
			cnt = cnt + value * 1;
		}
	}

	return cnt;
}

function cart_get_orders()
{
	var orders = '';

	for(var i = 0; i < window.localStorage.length; i++)
	{
		var key = window.localStorage.key(i); // getting a key
		var value = window.localStorage.getItem(key); // getting a value  (in ruby: hh[key] = x)

		if(key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + value + ',';
		}
	}

	return orders;
}

