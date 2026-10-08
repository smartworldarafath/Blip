.class public abstract Lcoil3/video/ImageRequestsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lcoil3/Extras$Key;

.field public static final b:Lcoil3/Extras$Key;

.field public static final c:Lcoil3/Extras$Key;

.field public static final d:Lcoil3/Extras$Key;

.field public static final e:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcoil3/video/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 12
    .line 13
    new-instance v0, Lcoil3/Extras$Key;

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcoil3/video/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 21
    .line 22
    new-instance v0, Lcoil3/Extras$Key;

    .line 23
    .line 24
    const-wide/16 v1, -0x1

    .line 25
    .line 26
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcoil3/video/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    .line 34
    .line 35
    new-instance v0, Lcoil3/Extras$Key;

    .line 36
    .line 37
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Lcoil3/video/ImageRequestsKt;->d:Lcoil3/Extras$Key;

    .line 47
    .line 48
    new-instance v0, Lcoil3/Extras$Key;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lcoil3/video/ImageRequestsKt;->e:Lcoil3/Extras$Key;

    .line 59
    .line 60
    return-void
.end method
