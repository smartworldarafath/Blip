.class final Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessorSm"
.end annotation


# instance fields
.field public a:I

.field public final b:Landroidx/emoji2/text/MetadataRepo$Node;

.field public c:Landroidx/emoji2/text/MetadataRepo$Node;

.field public d:Landroidx/emoji2/text/MetadataRepo$Node;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/MetadataRepo$Node;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->a:I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->b:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->c:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->a:I

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->b:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 5
    .line 6
    iput-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->c:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->f:I

    .line 10
    .line 11
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->c:Landroidx/emoji2/text/MetadataRepo$Node;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/emoji2/text/MetadataRepo$Node;->b:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->b()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/flatbuffer/Table;->a(I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/emoji2/text/flatbuffer/Table;->b:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    iget v0, v0, Landroidx/emoji2/text/flatbuffer/Table;->a:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return v2

    .line 29
    :cond_0
    iget p0, p0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->e:I

    .line 30
    .line 31
    const v0, 0xfe0f

    .line 32
    .line 33
    .line 34
    if-ne p0, v0, :cond_1

    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method
