.class public final Lcom/google/android/gms/common/internal/zao;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/util/SparseIntArray;

.field public final b:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/util/SparseIntArray;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/gms/common/internal/zao;->a:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/android/gms/common/internal/zao;->b:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Lcom/google/android/gms/common/api/Api$Client;->a()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zao;->a:Landroid/util/SparseIntArray;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    const/4 v1, -0x1

    .line 15
    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    if-eq v2, v1, :cond_0

    .line 21
    .line 22
    return v2

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zao;->a:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    const/4 v0, 0x0

    .line 27
    move v3, v0

    .line 28
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ge v3, v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-le v4, p2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v0, v1

    .line 53
    :goto_1
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zao;->b:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 56
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b(Landroid/content/Context;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    :cond_3
    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    monitor-exit v2

    .line 65
    return v0

    .line 66
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    throw p0
.end method
