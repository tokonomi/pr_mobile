import 'package:flutter/material.dart';

class Cabinet extends StatefulWidget {
  const Cabinet({super.key});

  @override
  State<Cabinet> createState() => _CabinetState();
}


class _CabinetState extends State<Cabinet> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context){
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                icon: Icon(Icons.home), // Иконка 1
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                  // Обработчик для первой иконки
                }
            ),
            SizedBox(width: 15)
          ],
          title: Text('Мой кабинет'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
                Text('Добро пожаловать в личный кабинет partner rooms'),
                SizedBox(height: 10),
                Text('В личном кабинете вы сможете найти нужные инструменты для управления своим бизнесом'),
                SizedBox(height: 10),
                Container(
                  child: TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    controller: _tabcontroller,
                    tabs: [
                      Tab(text: 'Покупки'),
                      Tab(text: 'Продажи')
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.maxFinite,
                  height: 700,
                  child: TabBarView(
                    controller: _tabcontroller,
                    children: [
                      Buys(),
                      MySells()
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

class Buys extends StatelessWidget {
  const Buys({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Последние заказы'),
          MyCard(),
          Row(
              children: [
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        // Добавьте вашу логику для кнопки "Оставить отзыв" здесь
                        print('Оставить отзыв');
                      },
                      child: Text('Оставить отзыв'),
                    )
                ),
                SizedBox(width: 9),
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        // Добавьте вашу логику для кнопки "Оставить отзыв" здесь
                        print('Оставить отзыв');
                      },
                      child: Text('Дополнительные сведения'),
                    )
                )
              ]
          ),
          MyCard(),
          Row(
              children: [
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        // Добавьте вашу логику для кнопки "Оставить отзыв" здесь
                        print('Оставить отзыв');
                      },
                      child: Text('Оставить отзыв'),
                    )
                ),
                SizedBox(width: 9),
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        // Добавьте вашу логику для кнопки "Оставить отзыв" здесь
                        print('Оставить отзыв');
                      },
                      child: Text('Дополнительные сведения'),
                    )
                )
              ]
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('Избранные: 25', style: TextStyle(fontSize: 16),)
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: (){

                    },
                    child: Text('Посмотреть все заказы')
                )
              ],
            ),
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Сообщение')
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Заказы')
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Транзакции')
          ),

        ],
      ),
    );
  }
}

class MySells extends StatelessWidget {
  const MySells({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Text('Ваш рейтинг'),
              ElevatedButton(
                  onPressed: (){

                  },
                  child: Text('Добавить товар')
              )
            ],
          ),
          Row(
            children: [
              Text('Сортировка продуктов'),
              DropdownButton(items: [
                DropdownMenuItem(child: Text('Option 1'), value: 'option1',),
                DropdownMenuItem(child: Text('Option 1'), value: 'option1',),
                DropdownMenuItem(child: Text('Option 1'), value: 'option1',),
              ], onChanged: (value){})
            ],
          ),
          Column(
            children: [
              Text('Поиск'),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Введите название продукта',
                ),
              ),
              SizedBox(height: 0), // Пространство между инпутами
              TextField(
                decoration: InputDecoration(
                  labelText: 'Введите идентификатор продукта',
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ElevatedButton(
                      onPressed: (){

                      },
                      child: Text('Добавить товар')
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: (){

                      },
                      child: Text('Добавить товар')
                  )
                ],
              )
            ],
          ),
          Container(
            child: Column(
              children: [
                Text('Список товаров'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(label: Text('Выбор')),
                      DataColumn(label: Text('Название продукта')),
                      DataColumn(label: Text('Категории')),
                      DataColumn(label: Text('Цена')),
                      DataColumn(label: Text('Локация')),
                      DataColumn(label: Text('Статус')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                          ),
                          DataCell(Text('Продукт 1')),
                          DataCell(Text('Категория 1')),
                          DataCell(Text('\$19.99')),
                          DataCell(Text('Местоположение 1')),
                          DataCell(Text('Активен')),
                        ],
                        color: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.selected)) {
                              return Colors.blue.withOpacity(0.5);
                            }
                            return Colors.blue.withOpacity(0);
                          },
                        ),
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Checkbox(
                              value: false,
                              onChanged: (value) {},
                            ),
                          ),
                          DataCell(Text('Продукт 2')),
                          DataCell(Text('Категория 2')),
                          DataCell(Text('\$29.99')),
                          DataCell(Text('Местоположение 2')),
                          DataCell(Text('Неактивен')),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Сообщение')
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Заказы')
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Транзакции')
          ),
          ElevatedButton(
              onPressed: (){

              },
              style: ButtonStyle(
                  alignment: Alignment.centerLeft
              ),
              child: Text('Транзакции')
          ),
        ],
      ),
    );
  }
}


class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            // Картинка слева
            Image.network(
              'https://images.unsplash.com/photo-1633527992904-53f86f81a23a?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', // Замените на ваш URL изображения
              width: 80.0,
              height: 80.0,
            ),
            SizedBox(width: 16.0),
            // Текстовые поля в центре
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Вата',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'XaçmazTTF LLC',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'всего: 4000 azn.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            Spacer(), // Равномерно распределяет пространство между детьми
            // Иконка справа
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
