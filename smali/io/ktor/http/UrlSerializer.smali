.class public final Lio/ktor/http/UrlSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lio/ktor/http/Url;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/ktor/http/UrlSerializer;

.field public static final b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/http/UrlSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/http/UrlSerializer;->a:Lio/ktor/http/UrlSerializer;

    .line 7
    .line 8
    const-string v0, "io.ktor.http.Url"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;)Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/ktor/http/UrlSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/ktor/http/URLUtilsKt;->a(Ljava/lang/String;)Lio/ktor/http/Url;

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
    check-cast p2, Lio/ktor/http/Url;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p2, Lio/ktor/http/Url;->n:Ljava/lang/String;

    .line 7
    .line 8
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->o(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lio/ktor/http/UrlSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method
