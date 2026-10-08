.class public final Landroidx/media3/container/Mp4Box$LeafBox;
.super Landroidx/media3/container/Mp4Box;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/container/Mp4Box;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeafBox"
.end annotation


# instance fields
.field public final b:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/container/Mp4Box;-><init>(I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    return-void
.end method
