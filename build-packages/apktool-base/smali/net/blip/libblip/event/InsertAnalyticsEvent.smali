.class public final Lnet/blip/libblip/event/InsertAnalyticsEvent;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final o:Lnet/blip/libblip/event/InsertAnalyticsEvent$Companion$ADAPTER$1;


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->k:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/event/InsertAnalyticsEvent;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/squareup/wire/Syntax;->k:Lcom/squareup/wire/Syntax;

    .line 10
    .line 11
    new-instance v1, Lnet/blip/libblip/event/InsertAnalyticsEvent$Companion$ADAPTER$1;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lnet/blip/libblip/event/InsertAnalyticsEvent$Companion$ADAPTER$1;-><init>(Lkotlin/jvm/internal/ClassReference;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lnet/blip/libblip/event/InsertAnalyticsEvent;->o:Lnet/blip/libblip/event/InsertAnalyticsEvent$Companion$ADAPTER$1;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object v0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->o:Lnet/blip/libblip/event/InsertAnalyticsEvent$Companion$ADAPTER$1;

    .line 8
    .line 9
    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->m:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "props"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/squareup/wire/internal/Internal;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->n:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/blip/libblip/event/InsertAnalyticsEvent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast p1, Lnet/blip/libblip/event/InsertAnalyticsEvent;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    return v2

    .line 28
    :cond_2
    iget-object v1, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->m:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/event/InsertAnalyticsEvent;->m:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    return v2

    .line 39
    :cond_3
    iget-object p0, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->n:Ljava/util/Map;

    .line 40
    .line 41
    iget-object p1, p1, Lnet/blip/libblip/event/InsertAnalyticsEvent;->n:Ljava/util/Map;

    .line 42
    .line 43
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x25

    .line 14
    .line 15
    mul-int/2addr v0, v1

    .line 16
    iget-object v2, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->m:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v2, v0, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->n:Ljava/util/Map;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->m:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "name="

    .line 9
    .line 10
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lnet/blip/libblip/event/InsertAnalyticsEvent;->n:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "props="

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v4, 0x0

    .line 39
    const/16 v5, 0x38

    .line 40
    .line 41
    const-string v1, ", "

    .line 42
    .line 43
    const-string v2, "InsertAnalyticsEvent{"

    .line 44
    .line 45
    const-string v3, "}"

    .line 46
    .line 47
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method
