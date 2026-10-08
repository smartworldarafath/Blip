.class Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final d:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;


# direct methods
.method public constructor <init>(Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->b:Z

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->d:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->d:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->c(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    .line 19
    .line 20
    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public final d(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/firebase/encoders/proto/ProtobufValueEncoderContext;->d:Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Lcom/google/firebase/encoders/proto/ProtobufDataEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Lcom/google/firebase/encoders/EncodingException;

    .line 19
    .line 20
    const-string p1, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method
