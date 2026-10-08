.class public final Lnet/blip/android/netstatus/NetworkGenerationTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Z

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:J


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->a:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Lnet/blip/android/netstatus/NetworkObservation;
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->e:Ljava/lang/Boolean;

    .line 12
    .line 13
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->d:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->e:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 41
    :goto_1
    iget-object v1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->f:Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    :cond_2
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->f:Ljava/lang/Boolean;

    .line 60
    .line 61
    iget-wide v1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->g:J

    .line 62
    .line 63
    const-wide/16 v3, 0x1

    .line 64
    .line 65
    add-long/2addr v1, v3

    .line 66
    iput-wide v1, p0, Lnet/blip/android/netstatus/NetworkGenerationTracker;->g:J

    .line 67
    .line 68
    new-instance p0, Lnet/blip/android/netstatus/NetworkObservation;

    .line 69
    .line 70
    invoke-direct {p0, v1, v2, v0}, Lnet/blip/android/netstatus/NetworkObservation;-><init>(JZ)V

    .line 71
    .line 72
    .line 73
    return-object p0
.end method
