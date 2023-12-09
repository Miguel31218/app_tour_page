import 'package:flutter/material.dart';

class CountryWidget extends StatelessWidget {
  CountryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://img.freepik.com/foto-gratis/joven-asiatica-mira-confianza-brazos-cruzados-pecho-sonrie-soportes-camara-naranja-sw_1258-169253.jpg?w=1060&t=st=1702069043~exp=1702069643~hmac=001b735a7a80db3451b96551a050021fc012c438221f607fbdc7cc0674f04314",
      "https://img.freepik.com/foto-gratis/confianza-alegre-joven-empresaria_1262-20881.jpg?w=360&t=st=1702071494~exp=1702072094~hmac=dab127066945e2d36e111c4c3d47a49edbc1ed7f6db87f83b59ac8f6727d081f",
      "https://img.freepik.com/foto-gratis/emociones-personas-estilo-vida-concepto-moda-estudiante-sonriente-mostrando-ofertas-vacaciones-verano-promociones-especiales-o-descuentos-tienda-senalando-dedo-derecha-sonriendo-fondo-amarillo_1258-58864.jpg?w=1060&t=st=1702071551~exp=1702072151~hmac=139c4f4a01714c08dd8fe4f14654b0cab33ac2784c54595efd1ce7f9d7bdb67d",
    ];

    return Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20.0),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5),
                width: 60.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.60),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(1.0, 3.0, 5.0, 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    for (int i = 0; i < images.length; i++)
                      Align(
                        widthFactor: 0.5,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(images[i]),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    "18 hours",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(1.0, 1.0, 5.0, 5.0),
                height: 60,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white.withOpacity(0.30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
