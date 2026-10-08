.class final Landroidx/media3/extractor/mp4/BoxParser$StsdData;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StsdData"
.end annotation


# instance fields
.field public final a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

.field public b:Landroidx/media3/common/Format;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->d:I

    .line 10
    .line 11
    return-void
.end method
