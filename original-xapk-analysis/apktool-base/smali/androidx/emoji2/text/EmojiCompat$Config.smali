.class public abstract Landroidx/emoji2/text/EmojiCompat$Config;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Config"
.end annotation


# instance fields
.field public final a:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

.field public b:I

.field public final c:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->b:I

    .line 6
    .line 7
    new-instance v0, Landroidx/emoji2/text/DefaultGlyphChecker;

    .line 8
    .line 9
    invoke-direct {v0}, Landroidx/emoji2/text/DefaultGlyphChecker;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat$Config;->c:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 13
    .line 14
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$Config;->a:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 15
    .line 16
    return-void
.end method
