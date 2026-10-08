.class public final Landroidx/media3/common/Player$Commands;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Player$Commands$Builder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/FlagSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/common/FlagSet$Builder;->b()Landroidx/media3/common/FlagSet;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Landroidx/media3/common/util/Util;->z(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroidx/media3/common/Player$Commands;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    check-cast p1, Landroidx/media3/common/Player$Commands;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/common/FlagSet;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method
