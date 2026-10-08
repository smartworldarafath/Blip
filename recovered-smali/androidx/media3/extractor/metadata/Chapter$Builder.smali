.class public Landroidx/media3/extractor/metadata/Chapter$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/Chapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public d:Landroidx/media3/common/Label;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Landroidx/media3/extractor/metadata/Chapter$Builder;->a:J

    .line 10
    .line 11
    iput-wide v0, p0, Landroidx/media3/extractor/metadata/Chapter$Builder;->b:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/extractor/metadata/Chapter;
    .locals 7

    .line 1
    new-instance v0, Landroidx/media3/extractor/metadata/ChapterImpl;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/extractor/metadata/Chapter$Builder;->a:J

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/media3/extractor/metadata/Chapter$Builder;->b:J

    .line 6
    .line 7
    iget-boolean v5, p0, Landroidx/media3/extractor/metadata/Chapter$Builder;->c:Z

    .line 8
    .line 9
    iget-object v6, p0, Landroidx/media3/extractor/metadata/Chapter$Builder;->d:Landroidx/media3/common/Label;

    .line 10
    .line 11
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/metadata/ChapterImpl;-><init>(JJZLandroidx/media3/common/Label;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
