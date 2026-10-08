.class public abstract Lnet/blip/libblip/LoggerKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lnet/blip/libblip/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/blip/libblip/Logger;

    .line 2
    .line 3
    sget-object v1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/blip/libblip/Logger;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    add-int/lit8 v0, v0, -0x1

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, v0}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    aget-object p0, p1, p0

    .line 10
    .line 11
    return-object p0
.end method
