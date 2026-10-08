.class public abstract Lcoil3/request/ImageRequestsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lcoil3/Extras$Key;

.field public static final b:Lcoil3/Extras$Key;

.field public static final c:Lcoil3/Extras$Key;

.field public static final d:Lcoil3/Extras$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/Extras$Key;

    .line 2
    .line 3
    sget-object v1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcoil3/request/ImageRequestsKt;->a:Lcoil3/Extras$Key;

    .line 9
    .line 10
    new-instance v0, Lcoil3/Extras$Key;

    .line 11
    .line 12
    const/16 v1, 0x1000

    .line 13
    .line 14
    invoke-static {v1, v1}, Lcoil3/size/SizeKt;->a(II)Lcoil3/size/Size;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    .line 22
    .line 23
    new-instance v0, Lcoil3/Extras$Key;

    .line 24
    .line 25
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcoil3/request/ImageRequestsKt;->c:Lcoil3/Extras$Key;

    .line 31
    .line 32
    new-instance v0, Lcoil3/Extras$Key;

    .line 33
    .line 34
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcoil3/Extras$Key;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcoil3/request/ImageRequestsKt;->d:Lcoil3/Extras$Key;

    .line 40
    .line 41
    return-void
.end method
