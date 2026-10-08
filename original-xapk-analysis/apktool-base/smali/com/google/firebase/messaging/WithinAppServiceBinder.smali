.class Lcom/google/firebase/messaging/WithinAppServiceBinder;
.super Landroid/os/Binder;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final d:Lcom/google/firebase/messaging/EnhancedIntentService$1;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/messaging/WithinAppServiceBinder;->d:Lcom/google/firebase/messaging/EnhancedIntentService$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    const-string v0, "FirebaseMessaging"

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const-string v2, "service received new intent via bind strategy"

    .line 21
    .line 22
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p1, Lcom/google/firebase/messaging/WithinAppServiceConnection$BindRequest;->a:Landroid/content/Intent;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/google/firebase/messaging/WithinAppServiceBinder;->d:Lcom/google/firebase/messaging/EnhancedIntentService$1;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/google/firebase/messaging/EnhancedIntentService$1;->a:Lcom/google/firebase/messaging/EnhancedIntentService;

    .line 30
    .line 31
    sget v2, Lcom/google/firebase/messaging/EnhancedIntentService;->o:I

    .line 32
    .line 33
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 34
    .line 35
    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lcom/google/firebase/messaging/EnhancedIntentService;->j:Ljava/util/concurrent/ExecutorService;

    .line 39
    .line 40
    new-instance v4, Ls3;

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    invoke-direct {v4, p0, v0, v2, v5}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    new-instance p0, Lz2;

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-direct {p0, v0}, Lz2;-><init>(I)V

    .line 53
    .line 54
    .line 55
    new-instance v0, Lcom/google/firebase/messaging/f;

    .line 56
    .line 57
    invoke-direct {v0, v1, p1}, Lcom/google/firebase/messaging/f;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Lcom/google/android/gms/tasks/zzw;

    .line 61
    .line 62
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->b(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 67
    .line 68
    const-string p1, "Binding only allowed within app"

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0
.end method
