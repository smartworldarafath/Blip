.class final Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.shared.AvatarEditorKt$AvatarEditor$scope$1$1$1"
    f = "AvatarEditor.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lkotlin/jvm/functions/Function2;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->o:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->p:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->p:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->o:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lnet/blip/shared/ContentPicker$Options;

    .line 25
    .line 26
    sget-object v1, Lnet/blip/shared/ContentPicker$ContentType$Image;->a:Lnet/blip/shared/ContentPicker$ContentType$Image;

    .line 27
    .line 28
    const/16 v4, 0xc

    .line 29
    .line 30
    invoke-direct {p1, v1, v2, v4}, Lnet/blip/shared/ContentPicker$Options;-><init>(Lnet/blip/shared/ContentPicker$ContentType;Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    iput v3, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->n:I

    .line 34
    .line 35
    iget-object v1, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->o:Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/String;

    .line 51
    .line 52
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    if-nez p1, :cond_3

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_3
    iget-object v1, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->p:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lnet/blip/shared/AvatarEditorKt$AvatarEditor$scope$1$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 63
    .line 64
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-object v0
.end method
