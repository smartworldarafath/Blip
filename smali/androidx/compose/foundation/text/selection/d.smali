.class public final synthetic Landroidx/compose/foundation/text/selection/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/d;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/selection/d;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Landroidx/compose/foundation/text/selection/d;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager_androidKt$addBasicTextFieldTextContextMenuComponents$1$textFieldSuspendItem$1$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/d;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 13
    .line 14
    invoke-static {p0, v2, v0, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 15
    .line 16
    .line 17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method
