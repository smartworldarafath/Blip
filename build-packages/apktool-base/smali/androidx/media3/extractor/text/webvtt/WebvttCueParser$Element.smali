.class Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Element"
.end annotation


# static fields
.field public static final c:Landroidx/media3/extractor/text/webvtt/a;


# instance fields
.field public final a:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/extractor/text/webvtt/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->c:Landroidx/media3/extractor/text/webvtt/a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->a:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->b:I

    .line 7
    .line 8
    return-void
.end method
