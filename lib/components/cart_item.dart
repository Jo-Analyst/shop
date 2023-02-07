import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shop/models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;
  const CartItemWidget(this.cartItem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 25,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).primaryTextTheme.headline6?.color,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text(
                  '${cartItem.price}',
                ),
              ),
            ),
          ),
          title: Text(cartItem.name),
          subtitle: Text(
            "Total: ${NumberFormat('R\$ #.00', 'pt-BR').format(cartItem.price * cartItem.quantity)}",
          ),
          trailing: Text('${cartItem.quantity}x'),
        ),
      ),
    );
  }
}
