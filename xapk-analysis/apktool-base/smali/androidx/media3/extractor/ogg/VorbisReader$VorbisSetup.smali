.class final Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/VorbisReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final a:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

.field public final b:Landroidx/media3/container/VorbisUtil$CommentHeader;

.field public final c:[B

.field public final d:[Landroidx/media3/container/VorbisUtil$Mode;


# direct methods
.method public constructor <init>(Landroidx/media3/container/VorbisUtil$VorbisIdHeader;Landroidx/media3/container/VorbisUtil$CommentHeader;[B[Landroidx/media3/container/VorbisUtil$Mode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->a:Landroidx/media3/container/VorbisUtil$VorbisIdHeader;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->b:Landroidx/media3/container/VorbisUtil$CommentHeader;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->c:[B

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/extractor/ogg/VorbisReader$VorbisSetup;->d:[Landroidx/media3/container/VorbisUtil$Mode;

    .line 11
    .line 12
    return-void
.end method
