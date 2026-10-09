.class public Lcom/google/firebase/encoders/proto/ProtobufEncoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/google/firebase/encoders/ObjectEncoder;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Lz9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->a:Ljava/util/HashMap;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->c:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->b:Ljava/util/HashMap;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->c:Lcom/google/firebase/encoders/ObjectEncoder;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0, p2, p0, v1, v2}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;-><init>(Ljava/io/ByteArrayOutputStream;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/google/firebase/encoders/ObjectEncoder;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/google/firebase/encoders/ObjectEncoder;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0, p1, v0}, Lcom/google/firebase/encoders/ObjectEncoder;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "No encoder for "

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
