import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableInfoSinTitulo extends StatefulWidget {
  final List<Map<String, dynamic>> campos;
  final List<Map<String, dynamic>> info;
  final int paginacionMax;

  const TableInfoSinTitulo(
      {@required this.campos,
      @required this.info,
      @required this.paginacionMax});

  @override
  _TableInfoSinTituloState createState() => _TableInfoSinTituloState();
}

class _TableInfoSinTituloState extends State<TableInfoSinTitulo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.0 * widget.paginacionMax + 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                width: 875,
                height: 46,
                child: ListView.builder(
                  itemCount: widget.campos.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      width: widget.campos[index]['tamaño'] as double,
                      child: Center(
                        child: Text(
                          '${widget.campos[index]['title']}'.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Container(
                        width: 875 -
                            (widget.campos[widget.campos.length - 1]['tamaño']),
                        height: 46,
                        child: ListView.builder(
                          itemCount: widget.campos.length - 1,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index2) {
                            return Container(
                              width: widget.campos[index2]['tamaño'] as double,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0, vertical: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(
                                        widget.info[index]['estado'] != null
                                            ? int.parse(
                                                widget.info[index]['estado'])
                                            : 0xFFEBEBEB,
                                      ),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2.5),
                                      child: Text(
                                        '${widget.info[index][widget.campos[index2]['title']]}',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: widget.campos[widget.campos.length - 1]['tamaño']
                            as double,
                        height: 46,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5.0),
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => print('funciona'),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Text(
                                  'Detalle'.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              childCount: widget.info.length > widget.paginacionMax
                  ? widget.paginacionMax
                  : widget.info.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: widget.paginacionMax > widget.info.length
                  ? (46.0 * (widget.paginacionMax - widget.info.length)) + 10
                  : 10.0,
              child: Divider(),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 31.0,
                  color: Theme.of(context).primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    width: 126,
                    height: 36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Theme.of(context).primaryColor),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.5),
                        child: Text(
                          '1 - ${widget.paginacionMax}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 31.0,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
