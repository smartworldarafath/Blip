.class final Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.vinceglb.filekit.dialogs.FileKit_androidKt"
    f = "FileKit.android.kt"
    l = {
        0x1f2,
        0x1f9
    }
    m = "runPickerLaunchWithActivityNotFoundFallback"
    v = 0x2
.end annotation


# instance fields
.field public m:Lkotlin/coroutines/jvm/internal/SuspendLambda;

.field public synthetic n:Ljava/lang/Object;

.field public o:I


# virtual methods
.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->n:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;->o:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-static {p1, p1, p0}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt;->e(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
