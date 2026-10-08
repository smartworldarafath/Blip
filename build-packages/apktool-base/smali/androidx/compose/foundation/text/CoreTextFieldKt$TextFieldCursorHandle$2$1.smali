.class final Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/text/TextDragObserver;

.field public final synthetic b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;->a:Landroidx/compose/foundation/text/TextDragObserver;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;->b:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1;->a:Landroidx/compose/foundation/text/TextDragObserver;

    .line 7
    .line 8
    invoke-direct {v0, p1, p0, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt$TextFieldCursorHandle$2$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/TextDragObserver;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 16
    .line 17
    if-ne p0, p1, :cond_0

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method
