.class public interface abstract Lkotlinx/serialization/encoding/Decoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public abstract A()F
.end method

.method public abstract B()D
.end method

.method public abstract c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;
.end method

.method public abstract f()Z
.end method

.method public abstract h()C
.end method

.method public abstract m()I
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract q()J
.end method

.method public abstract r()Z
.end method

.method public abstract u(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/Decoder;
.end method

.method public x(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, p0}, Lkotlinx/serialization/DeserializationStrategy;->a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public abstract y()B
.end method

.method public abstract z()S
.end method
