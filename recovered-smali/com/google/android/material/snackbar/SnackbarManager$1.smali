.class Lcom/google/android/material/snackbar/SnackbarManager$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic j:Lcom/google/android/material/snackbar/SnackbarManager;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/SnackbarManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarManager$1;->j:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarManager$1;->j:Lcom/google/android/material/snackbar/SnackbarManager;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lio/sentry/d;->i()V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarManager;->a:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    const/4 p1, 0x0

    .line 21
    :try_start_0
    throw p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method
