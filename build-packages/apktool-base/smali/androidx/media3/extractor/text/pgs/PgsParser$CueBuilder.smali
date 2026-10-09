.class final Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/pgs/PgsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:[I

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    const/16 v0, 0x100

    .line 12
    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media3/extractor/text/pgs/PgsParser$CueBuilder;->b:[I

    .line 16
    .line 17
    return-void
.end method
