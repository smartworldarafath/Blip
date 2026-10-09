.class final Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldPointerModifier_commonKt$defaultTextFieldPointer$3;->a:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->z:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$mouseSelectionObserver$1;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->y:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;

    .line 6
    .line 7
    invoke-static {p1, v0, p0, p2}, Landroidx/compose/foundation/text/selection/SelectionGesturesKt;->c(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/selection/MouseSelectionObserver;Landroidx/compose/foundation/text/TextDragObserver;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method
