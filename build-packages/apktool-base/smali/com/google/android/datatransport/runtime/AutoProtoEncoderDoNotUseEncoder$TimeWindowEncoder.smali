.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

.field public static final b:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final c:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->a:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 9
    .line 10
    const-string v1, "startMs"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/firebase/encoders/proto/AtProtobuf;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput v2, v1, Lcom/google/firebase/encoders/proto/AtProtobuf;->a:I

    .line 22
    .line 23
    invoke-static {v1, v0}, Lq;->d(Lcom/google/firebase/encoders/proto/AtProtobuf;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 28
    .line 29
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 30
    .line 31
    const-string v1, "endMs"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/google/firebase/encoders/proto/AtProtobuf;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    iput v2, v1, Lcom/google/firebase/encoders/proto/AtProtobuf;->a:I

    .line 43
    .line 44
    invoke-static {v1, v0}, Lq;->d(Lcom/google/firebase/encoders/proto/AtProtobuf;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    .line 2
    .line 3
    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    .line 5
    sget-object p0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    .line 7
    iget-wide v0, p1, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->a:J

    .line 8
    .line 9
    invoke-interface {p2, p0, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->a(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    .line 14
    iget-wide v0, p1, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->b:J

    .line 15
    .line 16
    invoke-interface {p2, p0, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->a(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 17
    .line 18
    .line 19
    return-void
.end method
