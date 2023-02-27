import 'package:flutter/material.dart';
import 'package:yucom/statemanager/contador.dart';

class TicketPrice extends StatelessWidget {
  const TicketPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Tipo',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Precio', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Cantidad de boletos',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Adulto(s)'),
              Text(' \$130.00 MXN'),
              Contador()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Niño(s)'),
              Text(' \$130.00 MXN'),
              Contador()
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('3° Edad'),
              Text(' \$130.00 MXN'),
              Contador()
            ],
          ),
          const Center(
            child: Text(
              '**Maximo 5 boletos por transaccion',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
