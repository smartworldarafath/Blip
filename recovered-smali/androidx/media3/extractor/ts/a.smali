.class public final synthetic Landroidx/media3/extractor/ts/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;


# instance fields
.field public final synthetic j:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/a;->j:Landroidx/media3/extractor/ts/UserDataReader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final e(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/ts/a;->j:Landroidx/media3/extractor/ts/UserDataReader;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/extractor/ts/UserDataReader;->b:[Landroidx/media3/extractor/TrackOutput;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/CeaUtil;->b(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
