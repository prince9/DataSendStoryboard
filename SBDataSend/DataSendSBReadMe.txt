★Storyboardを使って次の画面へデータを送っています。しかし、一般的な方法である- (void)prepareForSegue:〜でデータの送信を行っているのではなく、「dataSend」というRound Rect Buttonを押すことでデータの送信を行っています。ページ送りとは異なるタイミングでデータを送りたい、データ送信ボタンが欲しい!などというときに有効かと思われます。
なお、画面の切り替えは両方ともIBで結ぶのではなく、2画面目(1画面目へ戻るView)はボタンを設置して[self dismissModalViewControllerAnimated:YES];と書いたほうがメモリ的に良いそうです。改変等ご自由にどうぞ。もっと良い方法があればご教授頂けると嬉しいです。

This has sent data to the next screen using Storyboard 
However, data is not transmitted by -(void)prepareForSegue: and data is transmitted by pushing a button. 

1.Single View Applicationで新規プロジェクトを作る
New project is made(Single View Application). 

2.SecondViewControllerをUIViewControllerで作成(New File)
SecondViewController is made(UIViewController,New File).

3.StoryboardにViewControllerを追加、classにSecondViewControllerを選択する
ViewController is added to Storyboard. SecondViewController is chosen as class.

4.ViewControllerにボタンを追加、controlキーを押しながら次の画面(SecondViewController)へドラッグ、Modelを選ぶ
ViewController is added to Round Rect Button. It drags to SecondViewController, pushing control key. And Model is chosen. 

5.ViewControllerとSecondViewControllerにUIパーツを設置する。データを送信するボタンを忘れずに(次のページへ行くボタンとは別に作ります)
UIpart is arranged.

6.それぞれUIパーツをViewController.hとSecondViewController.hに結びつける
UIpart is connected to ViewController.h or SecondViewController.h. 
※本によって意見が分かれる上にAppleのサンプルでもバラバラな気がしますが、メモリ的にはOutletのStorageはStrongではなくweakのほうがいいらしい

7.AppDelegate.hと.mに//追加と書かれている部分を書く
AppDelegate.h and .m add code.

8.ViewController.mに//追加と書かれている部分を書く
ViewController.m add code.

9.SecondViewController.mに//追加と書かれている部分を書く
SecondViewController.m add code.