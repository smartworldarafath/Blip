.class final Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "Landroid/net/Uri;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.vinceglb.filekit.dialogs.FileKit_androidKt$callFilePicker$5"
    f = "FileKit.android.kt"
    l = {
        0x1b8
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lio/github/vinceglb/filekit/dialogs/PickerMode;

.field public final synthetic p:Landroidx/activity/result/ActivityResultRegistry;

.field public final synthetic q:Landroidx/activity/result/PickVisualMediaRequest;


# direct methods
.method public constructor <init>(Lio/github/vinceglb/filekit/dialogs/PickerMode;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/PickVisualMediaRequest;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->o:Lio/github/vinceglb/filekit/dialogs/PickerMode;

    .line 2
    .line 3
    iput-object p2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->p:Landroidx/activity/result/ActivityResultRegistry;

    .line 4
    .line 5
    iput-object p3, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->q:Landroidx/activity/result/PickVisualMediaRequest;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;

    .line 4
    .line 5
    iget-object v1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->p:Landroidx/activity/result/ActivityResultRegistry;

    .line 6
    .line 7
    iget-object v2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->q:Landroidx/activity/result/PickVisualMediaRequest;

    .line 8
    .line 9
    iget-object p0, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->o:Lio/github/vinceglb/filekit/dialogs/PickerMode;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;-><init>(Lio/github/vinceglb/filekit/dialogs/PickerMode;Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/PickVisualMediaRequest;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->n:I

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->o:Lio/github/vinceglb/filekit/dialogs/PickerMode;

    .line 25
    .line 26
    check-cast p1, Lio/github/vinceglb/filekit/dialogs/PickerMode$Multiple;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;

    .line 32
    .line 33
    invoke-static {}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->a()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-direct {p1, v1}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput v2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->n:I

    .line 41
    .line 42
    iget-object v1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->p:Landroidx/activity/result/ActivityResultRegistry;

    .line 43
    .line 44
    iget-object v2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$callFilePicker$5;->q:Landroidx/activity/result/PickVisualMediaRequest;

    .line 45
    .line 46
    invoke-static {v1, p1, v2, p0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->a(Landroidx/activity/result/ActivityResultRegistry;Landroidx/activity/result/contract/ActivityResultContract;Ljava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

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
    return-object p0
.end method
