import 'package:flutter/material.dart';
import 'package:project_91/constants.dart';
import 'package:project_91/pages/widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> columns = [
      'Texto7',
      'Texto8',
      'Texto9',
      'Texto10',
      'Texto11',
      'Texto12',
      'Texto13',
      'Detalle'
    ];

    List<String> rows = [
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...', // TextField
      'Escribir...',
    ];

    TextEditingController column12Controller = TextEditingController();

    @override
    void initState() {
      super.initState();
      column12Controller = TextEditingController(text: 'Escribir...');
    }

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomCard(
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 40.0),
                child: Text(
                  'TEXTO 1',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 30),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            _SecondContainer(),
            const SizedBox(
              height: 20.0,
            ),
            CustomCard(Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'TITULO1',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Table(
                    //defaultColumnWidth: FlexColumnWidth(3.0),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(
                          children: columns
                              .map(
                                (e) => Center(
                                  child: Text(
                                    e,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                  ),
                                ),
                              )
                              .toList()),
                      TableRow(children: [
                        for (var i = 0; i < rows.length; i++)
                          if (i != 5)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 10.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: AppColors.grey),
                                  child: Text(
                                    rows[i],
                                    maxLines: 5,
                                  ),
                                ),
                              ),
                            ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: column12Controller,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.grey,
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                contentPadding: const EdgeInsets.all(15)),
                          ),
                        ),
                        Center(
                          child: RaisedButton(
                            color: AppColors.blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Detalle',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ]),
                      TableRow(children: [
                        for (var i = 0; i < rows.length; i++)
                          if (i != 5)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Center(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40.0, vertical: 10.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: AppColors.grey),
                                  child: Text(
                                    rows[i],
                                    maxLines: 5,
                                  ),
                                ),
                              ),
                            ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: column12Controller,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.grey,
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                contentPadding: const EdgeInsets.all(15)),
                          ),
                        ),
                        Center(
                          child: RaisedButton(
                            color: AppColors.blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                'Detalle',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        )
                      ]),
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class _SecondContainer extends StatelessWidget {
  const _SecondContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Texto 2',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 25),
            ),
            _VerticalDiv(),
            Text(
              'Texto 3',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 25),
            ),
            _VerticalDiv(),
            Text(
              'Texto 3',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 25),
            ),
            _VerticalDiv(),
            Text(
              'Texto 3',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 25),
            ),
            _VerticalDiv(),
            Text(
              'Texto 3',
              style:
                  Theme.of(context).textTheme.bodyText1.copyWith(fontSize: 25),
            ),
            RaisedButton(
              color: AppColors.blueColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Text('Ver más', style: TextStyle(color: Colors.white)),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

class _VerticalDiv extends StatelessWidget {
  const _VerticalDiv({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        child: VerticalDivider(
          thickness: 4.0,
          color: AppColors.blueColor,
        ));
  }
}
