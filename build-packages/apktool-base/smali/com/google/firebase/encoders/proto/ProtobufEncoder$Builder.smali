.class public final Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/firebase/encoders/config/EncoderConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/encoders/proto/ProtobufEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/config/EncoderConfig<",
        "Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lz9;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lz9;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lz9;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lz9;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->d:Lz9;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->b:Ljava/util/HashMap;

    .line 17
    .line 18
    sget-object v0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->d:Lz9;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->c:Lz9;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->a:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/firebase/encoders/proto/ProtobufEncoder$Builder;->b:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
