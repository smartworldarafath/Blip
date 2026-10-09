.class public final Lkotlinx/serialization/json/JsonElementSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/json/JsonElementSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonElementSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 10
    .line 11
    new-instance v1, La7;

    .line 12
    .line 13
    const/16 v2, 0x17

    .line 14
    .line 15
    invoke-direct {v1, v2}, La7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v4, "kotlinx.serialization.json.JsonElement"

    .line 19
    .line 20
    invoke-static {v4}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    sget-object v2, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->a:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    .line 28
    .line 29
    sget-object v5, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;->a:Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    .line 30
    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    new-instance v8, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    .line 38
    .line 39
    invoke-direct {v8, v4}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v1, v8}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    new-instance v3, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 46
    .line 47
    iget-object v1, v8, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->b:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;ILjava/util/List;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-string v0, "For StructureKind.CLASS please use \'buildClassSerialDescriptor\' instead"

    .line 62
    .line 63
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    const-string v0, "Blank serial names are prohibited"

    .line 68
    .line 69
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    sput-object v3, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializersKt;->b(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Lkotlinx/serialization/json/JsonDecoder;->l()Lkotlinx/serialization/json/JsonElement;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializersKt;->a(Lkotlinx/serialization/encoding/Encoder;)V

    .line 7
    .line 8
    .line 9
    instance-of p0, p2, Lkotlinx/serialization/json/JsonPrimitive;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->a:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    .line 14
    .line 15
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    instance-of p0, p2, Lkotlinx/serialization/json/JsonObject;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->a:Lkotlinx/serialization/json/JsonObjectSerializer;

    .line 24
    .line 25
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    instance-of p0, p2, Lkotlinx/serialization/json/JsonArray;

    .line 30
    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    sget-object p0, Lkotlinx/serialization/json/JsonArraySerializer;->a:Lkotlinx/serialization/json/JsonArraySerializer;

    .line 34
    .line 35
    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/Encoder;->d(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    invoke-static {}, Lk8;->e()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final c()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    .line 2
    .line 3
    return-object p0
.end method
