import 'package:flutter/material.dart';
import 'package:practica1/models/personaje.dart';
import 'package:practica1/widgets/widgets.dart';

class DetailsPersonaje extends StatefulWidget {
  const DetailsPersonaje({Key? key, required this.personaje}) : super(key: key);

  final Personaje personaje;

  @override
  State<DetailsPersonaje> createState() => _DetailsShoesPageState();
}

class _DetailsShoesPageState extends State<DetailsPersonaje> {
  int valueIndexColor = 0;
  int valueIndexSize = 1;

  double sizeShoes(int index, Size size) {
    switch (index) {
      case 0:
        return (size.height * 0.09);
      case 1:
        return (size.height * 0.07);
      case 2:
        return (size.height * 0.05);
      case 3:
        return (size.height * 0.04);
      default:
        return (size.height * 0.05);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: -size.height * 0.15,
              right: -size.height * 0.20,
              child: TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 250),
                  tween: Tween(begin: 0, end: 1),
                  builder: (context, value, __) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      height: value * (size.height * 0.5),
                      width: value * (size.height * 0.5),
                      decoration: BoxDecoration(
                        color: widget.personaje.listImage[valueIndexColor].color,
                        shape: BoxShape.circle,
                      ),
                    );
                  }),
            ),
            Positioned(
              top: kToolbarHeight,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: size.height * 0.20,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: FittedBox(
                  child: Text(
                    widget.personaje.raze,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[100],
                    ),
                  ),
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 250),
              top: size.height * 0.22,
              right: sizeShoes(valueIndexSize, size),
              left: sizeShoes(valueIndexSize, size),
              child: Hero(
                tag: widget.personaje.name,
                child: Image(
                  image: AssetImage(
                    widget.personaje.listImage[valueIndexColor].image,
                  ),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.6,
              left: 16,
              right: 16,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: ShakeTransition(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.personaje.clas,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                widget.personaje.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ShakeTransition(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        const SizedBox(height: 8),
                        Text(
                          'Descripcion',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          widget.personaje.description,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
