.class final Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/activity/result/ActivityResultCallback;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/CancellableContinuationImpl;

.field public final synthetic k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;->j:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    iput-object p3, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    iget-object v1, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2;->x(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lio/github/vinceglb/filekit/dialogs/FileKit_androidKt$awaitActivityResult$2$1$1;->j:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 9
    .line 10
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->z()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
