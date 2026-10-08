.class public final Lkotlinx/serialization/internal/UByteSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlin/UByte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/internal/UByteSerializer;

.field public static final b:Lkotlinx/serialization/internal/InlineClassDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlinx/serialization/internal/UByteSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/internal/UByteSerializer;->a:Lkotlinx/serialization/internal/UByteSerializer;

    .line 7
    .line 8
    const-string v0, "kotlin.UByte"

    .line 9
    .line 10
    sget-object v1, Lkotlinx/serialization/internal/ByteSerializer;->a:Lkotlinx/serialization/internal/ByteSerializer;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlinx/serialization/internal/InlineClassDescriptorKt;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/InlineClassDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lkotlinx/serialization/internal/UByteSerializer;->b:Lkotlinx/serialization/internal/InlineClassDescriptor;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/UByteSerializer;->b:Lkotlinx/serialization/internal/InlineClassDescriptor;

    .line 2
    .line 3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->y()B

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Lkotlin/UByte;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lkotlin/UByte;-><init>(B)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlin/UByte;

    .line 2
    .line 3
    iget-byte p0, p2, Lkotlin/UByte;->j:B

    .line 4
    .line 5
    sget-object p2, Lkotlinx/serialization/internal/UByteSerializer;->b:Lkotlinx/serialization/internal/InlineClassDescriptor;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lkotlinx/serialization/encoding/Encoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Encoder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->h(B)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final c()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/UByteSerializer;->b:Lkotlinx/serialization/internal/InlineClassDescriptor;

    .line 2
    .line 3
    return-object p0
.end method
