import 'package:flutter/material.dart';
import 'package:project_91/constants.dart';
import 'package:project_91/pages/widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextEditingController column12Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    //column12Controller = TextEditingController(text: 'Escribir...');
  }

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

    List<String> row = [
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...', // TextField
      'Escribir...',
    ];

    List<String> columns2 = [
      'Texto16',
      'Texto17',
      'Texto18',
      'Texto19',
      'Texto20',
    ];

    List<String> row2 = [
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...',
      'Escribir...',
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        child: SingleChildScrollView(
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
              CustomCard(
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
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
                      _Table(columns: columns, row: row),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomCard(
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'PROGRAMACIÓN',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      _Table2(columns2: columns2, row2: row2),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: CustomCard(
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20.0),
                    child: GestureDetector(
                      child: Icon(Icons.save),
                      onTap: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Table2 extends StatelessWidget {
  const _Table2({
    Key key,
    @required this.columns2,
    @required this.row2,
  }) : super(key: key);

  final List<String> columns2;
  final List<String> row2;

  @override
  Widget build(BuildContext context) {
    int rowsNumber = 3;
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
            children: columns2
                .map(
                  (e) => Center(
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                    ),
                  ),
                )
                .toList()),
        //Iterate here with the lenght of the data list to add more rows
        for (var i = 0; i < rowsNumber; i++)
          TableRow(
            children: [
              for (var i = 0; i < row2.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: AppColors.grey),
                      child: Text(
                        row2[i] == null ? 'Escribir...' : row2[i],
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ],
    );
  }
}

class _Table extends StatelessWidget {
  const _Table({
    Key key,
    @required this.columns,
    @required this.row,
  }) : super(key: key);

  final List<String> columns;
  final List<String> row;

  @override
  Widget build(BuildContext context) {
    int rowsNumber = 3;
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
            children: columns
                .map(
                  (e) => Center(
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                    ),
                  ),
                )
                .toList()),
        //Iterate here with the lenght of the data list to add more rows
        for (var i = 0; i < rowsNumber; i++)
          TableRow(children: [
            for (var i = 0; i < row.length; i++)
              //if (i > 4)
              if (i != 5)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: AppColors.grey),
                      child: Text(
                        row[i] == null ? 'Escribir...' : row[i],
                      ),
                    ),
                  ),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                //controller: column12Controller,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.grey,
                    isDense: true,
                    hintText: 'Escribir...',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    contentPadding: const EdgeInsets.all(13)),
              ),
            ),
            _CustomButton(
              textButton: 'Detalle',
            )
          ]),
      ],
    );
  }
}

class _CustomButton extends StatelessWidget {
  final String textButton;
  const _CustomButton({
    Key key,
    this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        color: AppColors.blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text(
            textButton,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
        onPressed: () {},
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
            _CustomButton(textButton: 'Ver más')
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
