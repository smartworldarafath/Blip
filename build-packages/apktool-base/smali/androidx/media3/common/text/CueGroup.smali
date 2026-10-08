.class public final Landroidx/media3/common/text/CueGroup;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final b:Lcom/google/common/collect/Ordering;

.field public static final c:Landroidx/media3/common/text/CueGroup;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/Ordering;->c()Lcom/google/common/collect/Ordering;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lu2;

    .line 6
    .line 7
    const/16 v2, 0x14

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lu2;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->d(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Landroidx/media3/common/text/CueGroup;->b:Lcom/google/common/collect/Ordering;

    .line 17
    .line 18
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/media3/common/text/CueGroup;->c:Landroidx/media3/common/text/CueGroup;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroidx/media3/common/text/CueGroup;->b:Lcom/google/common/collect/Ordering;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/google/common/collect/ImmutableList;->x(Lcom/google/common/collect/Ordering;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    return-void
.end method
