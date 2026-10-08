.class public final Landroidx/media3/common/ColorInfo$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[B

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/common/ColorInfo;
    .locals 7

    .line 1
    new-instance v0, Landroidx/media3/common/ColorInfo;

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    .line 10
    .line 11
    iget v5, p0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 12
    .line 13
    iget v6, p0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 14
    .line 15
    invoke-direct/range {v0 .. v6}, Landroidx/media3/common/ColorInfo;-><init>(III[BII)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
