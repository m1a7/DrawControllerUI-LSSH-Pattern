
#import "ViewController.h"
// Model
#import "Model.h"
// Categories
#import "ViewController+SubviewsLifes.h"
#import "ViewController+SubviewsStyles.h"
#import "ViewController+SubviewsSizes.h"
#import "ViewController+SubviewsHelpers.h"


@interface ViewController ()

@end

@implementation ViewController


#pragma mark - Life cycle of viewcontroller

/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  __       __   _______  _______      ______ ____    ____  ______  __       _______
 |  |     |  | |   ____||   ____|    /      |\   \  /   / /      ||  |     |   ____|
 |  |     |  | |  |__   |  |__      |  ,----' \   \/   / |  ,----'|  |     |  |__
 |  |     |  | |   __|  |   __|     |  |       \_    _/  |  |     |  |     |   __|
 |  `----.|  | |  |     |  |____    |  `----.    |  |    |  `----.|  `----.|  |____
 |_______||__| |__|     |_______|    \______|    |__|     \______||_______||_______|
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
Introduction:
Метод (loadView) Системный метод.
Explanation:
--------------------------------------------------------------------------------
1. Инициализирует модель данных для демо теста
--------------------------------------------------------------------------------
*/
- (void) loadView {
    [super loadView];
    printMethod;
    self.model = [Model mockup];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    printMethod;
}

/*
 Introduction:
 Метод (viewDidAppear:) Системный метод.
 Explanation:
 --------------------------------------------------------------------------------
 1. Если модель инициализирована, а subviews отстуствуют, то вызвать метод
    - someActionForPrepareVCbeforeUsing, который проведет необходимые мероприятия
    для создания/обновления и добавления готовых Subviews на экран.
 --------------------------------------------------------------------------------
*/
- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    printMethod;

    if (self.model && self.view.subviews <= 0){
        [self groupOfActionsForPreparationControllersUI];
    }else if (!self.model){
        self.model = [Model mockup];
    }
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    printMethod;
}

/*
 Introduction:
 Метод (viewWillTransitionToSize:withTransitionCoordinator:) Системный метод переворота.
 Explanation:
 --------------------------------------------------------------------------------
 1. Внутри вызываем анимационный метод в который передаем блок, где вызываем метод
    -resizeSubviewsByModel: где идет перерасчет размеров и координат каждой subview
    согласно новой ориентации
 --------------------------------------------------------------------------------
 */

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator {
    printMethod;
    __weak ViewController* bself = self;
    [coordinator animateAlongsideTransition:nil completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        
        [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            [bself resizeSubviewsByModel:self.model];
        } completion:nil];
    }];
}


#pragma mark - Action
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      ___        ______ .___________. __    ______   .__   __.
     /   \      /      ||           ||  |  /  __  \  |  \ |  |
    /  ^  \    |  ,----'`---|  |----`|  | |  |  |  | |   \|  |
   /  /_\  \   |  |         |  |     |  | |  |  |  | |  . `  |
  /  _____  \  |  `----.    |  |     |  | |  `--'  | |  |\   |
 /__/     \__\  \______|    |__|     |__|  \______/  |__| \__|
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/
/*
 Introduction:
 Метод (nextBtnClicked:) Обработка нажатия кнопки.
 Explanation:
 --------------------------------------------------------------------------------
 1. Данный метод показывает что в главном файле контроллера могут находиться
    его системные метод и методы обработки дейтвий.
 --------------------------------------------------------------------------------
 */

-(void) nextBtnClicked:(UIButton*)sender {
    printMethod;
    NSLog(@"nextBtnClicked");
}


#pragma mark - Setter
/*///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      _______. _______ .___________.___________. _______ .______          _______.
     /       ||   ____||           |           ||   ____||   _  \        /       |
    |   (----`|  |__   `---|  |----`---|  |----`|  |__   |  |_)  |      |   (----`
     \   \    |   __|      |  |        |  |     |   __|  |      /        \   \
 .----)   |   |  |____     |  |        |  |     |  |____ |  |\  \----.----)   |
 |_______/    |_______|    |__|        |__|     |_______|| _| `._____|_______/
 
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////*/

/*
 Introduction:
 Метод (setModel:) Сеттер модели.
 Explanation:
 --------------------------------------------------------------------------------
 1. Контроллер графический отображает данные из модели. Соотвественно если модель
    меняется то и UI должен обновиться, для того чтобы обновить UI вызывается метод
    -someActionForPrepareVCbeforeUsing.
 --------------------------------------------------------------------------------
 */

- (void) setModel:(Model *)model{
    printMethod;
    _model = model;
    if (self.view){
        [self groupOfActionsForPreparationControllersUI];
    }
}


@end
