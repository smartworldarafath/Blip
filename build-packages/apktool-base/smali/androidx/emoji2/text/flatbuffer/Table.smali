.class public abstract Landroidx/emoji2/text/flatbuffer/Table;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Landroidx/emoji2/text/flatbuffer/Utf8;->a:Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    new-instance p0, Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object p0, Landroidx/emoji2/text/flatbuffer/Utf8;->a:Landroidx/emoji2/text/flatbuffer/Utf8Safe;

    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->d:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table;->b:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iget p0, p0, Landroidx/emoji2/text/flatbuffer/Table;->c:I

    .line 8
    .line 9
    add-int/2addr p0, p1

    .line 10
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method
