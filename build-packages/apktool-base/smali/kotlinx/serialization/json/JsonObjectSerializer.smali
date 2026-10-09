.class public final Lkotlinx/serialization/json/JsonObjectSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lkotlinx/serialization/json/JsonObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/json/JsonObjectSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonObjectSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->a:Lkotlinx/serialization/json/JsonObjectSerializer;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->b:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    .line 9
    .line 10
    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementSerializersKt;->b(Lkotlinx/serialization/encoding/Decoder;)Lkotlinx/serialization/json/JsonDecoder;

    .line 2
    .line 3
    .line 4
    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    .line 5
    .line 6
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    .line 7
    .line 8
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 9
    .line 10
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    .line 11
    .line 12
    invoke-direct {v0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/Map;

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlinx/serialization/json/JsonObject;

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
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    .line 10
    .line 11
    sget-object p0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 12
    .line 13
    new-instance p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    .line 14
    .line 15
    invoke-direct {p0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/MapLikeSerializer;->b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final c()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method
