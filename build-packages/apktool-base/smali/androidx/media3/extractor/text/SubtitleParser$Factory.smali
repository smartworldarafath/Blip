.class public interface abstract Landroidx/media3/extractor/text/SubtitleParser$Factory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/SubtitleParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final a:Landroidx/media3/extractor/text/SubtitleParser$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/extractor/text/SubtitleParser$Factory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/media3/common/Format;)I
.end method

.method public abstract b(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleParser;
.end method

.method public abstract f(Landroidx/media3/common/Format;)Z
.end method
