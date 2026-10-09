.class public abstract Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.super Lkotlinx/serialization/internal/CollectionLikeSerializer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Array:",
        "Ljava/lang/Object;",
        "Builder:",
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder<",
        "TArray;>;>",
        "Lkotlinx/serialization/internal/CollectionLikeSerializer<",
        "TElement;TArray;TBuilder;>;"
    }
.end annotation


# instance fields
.field public final b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/CollectionLikeSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 8
    .line 9
    invoke-interface {p1}, Lkotlinx/serialization/SerializationStrategy;->c()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->h(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->g(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/Encoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->n(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->m()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lkotlinx/serialization/internal/AbstractCollectionSerializer;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    .line 10
    .line 11
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->d()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final f(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    const-string p1, "This method lead to boxing and must not be used, use writeContents instead"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final l(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string p1, "This method lead to boxing and must not be used, use Builder.append instead"

    .line 9
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p0
.end method

.method public abstract m()Ljava/lang/Object;
.end method

.method public abstract n(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
.end method
