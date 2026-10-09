.class final Lnet/blip/android/filetypes/FileIconKt$Request$2;
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
    c = "net.blip.android.filetypes.FileIconKt$Request$2"
    f = "FileIcon.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:Ljava/lang/Object;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public final synthetic q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final synthetic r:Landroid/graphics/drawable/Drawable;

.field public final synthetic s:Landroid/content/Context;

.field public final synthetic t:Landroid/net/Uri;

.field public final synthetic u:Landroid/util/Size;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->r:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->s:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->t:Landroid/net/Uri;

    .line 8
    .line 9
    iput-object p5, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->u:Landroid/util/Size;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/android/filetypes/FileIconKt$Request$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/android/filetypes/FileIconKt$Request$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lnet/blip/android/filetypes/FileIconKt$Request$2;

    .line 2
    .line 3
    iget-object v4, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->t:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v5, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->u:Landroid/util/Size;

    .line 6
    .line 7
    iget-object v1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 8
    .line 9
    iget-object v2, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->r:Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    iget-object v3, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->s:Landroid/content/Context;

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Lnet/blip/android/filetypes/FileIconKt$Request$2;-><init>(Lkotlinx/coroutines/flow/MutableStateFlow;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->p:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->o:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    iget-object p0, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->n:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 31
    .line 32
    iput-object p1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->n:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->r:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    iput-object v1, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->o:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    iput v2, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->p:I

    .line 39
    .line 40
    iget-object v2, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->s:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v3, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->t:Landroid/net/Uri;

    .line 43
    .line 44
    iget-object v4, p0, Lnet/blip/android/filetypes/FileIconKt$Request$2;->u:Landroid/util/Size;

    .line 45
    .line 46
    invoke-static {v2, v3, v4, p0}, Lnet/blip/android/filetypes/FileIconKt;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    move-object v0, p1

    .line 54
    move-object p1, p0

    .line 55
    move-object p0, v0

    .line 56
    move-object v0, v1

    .line 57
    :goto_0
    check-cast p1, Lnet/blip/android/filetypes/Thumbnail;

    .line 58
    .line 59
    new-instance v1, Lnet/blip/android/filetypes/FileIcon;

    .line 60
    .line 61
    invoke-direct {v1, v0, p1}, Lnet/blip/android/filetypes/FileIcon;-><init>(Landroid/graphics/drawable/Drawable;Lnet/blip/android/filetypes/Thumbnail;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p0
.end method
