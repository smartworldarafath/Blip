.class abstract Lcom/google/android/play/core/review/zzg;
.super Lcom/google/android/play/core/review/internal/zzg;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final d:Lcom/google/android/play/core/review/internal/zzi;

.field public final e:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f:Lcom/google/android/play/core/review/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/zzg;->f:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.google.android.play.core.inappreview.protocol.IInAppReviewServiceCallback"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/google/android/play/core/review/zzg;->d:Lcom/google/android/play/core/review/internal/zzi;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/google/android/play/core/review/zzg;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 14
    .line 15
    return-void
.end method
