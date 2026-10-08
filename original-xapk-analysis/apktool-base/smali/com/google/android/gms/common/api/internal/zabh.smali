.class final Lcom/google/android/gms/common/api/internal/zabh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lcom/google/android/gms/common/api/internal/zabk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabk;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/google/android/gms/common/api/internal/zabh;->j:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabh;->k:Lcom/google/android/gms/common/api/internal/zabk;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabh;->k:Lcom/google/android/gms/common/api/internal/zabk;

    .line 2
    .line 3
    iget p0, p0, Lcom/google/android/gms/common/api/internal/zabh;->j:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zabk;->b(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
