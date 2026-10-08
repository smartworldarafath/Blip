.class public final Lnet/blip/libblip/frontend/TransferErr;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/frontend/TransferErr$Code;
    }
.end annotation


# static fields
.field public static final q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;


# instance fields
.field public final m:Lnet/blip/libblip/frontend/TransferErr$Code;

.field public final n:Ljava/lang/String;

.field public final o:Z

.field public final p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/frontend/TransferErr;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    sget-object v4, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 10
    .line 11
    new-instance v0, Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v3, "type.googleapis.com/frontend.TransferErr"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lnet/blip/libblip/frontend/TransferErr$Code;Ljava/lang/String;ZZLokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lnet/blip/libblip/frontend/TransferErr;->q:Lnet/blip/libblip/frontend/TransferErr$Companion$ADAPTER$1;

    .line 11
    .line 12
    invoke-direct {p0, v0, p5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 16
    .line 17
    iput-object p2, p0, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p3, p0, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 20
    .line 21
    iput-boolean p4, p0, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 22
    .line 23
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
    instance-of v1, p1, Lnet/blip/libblip/frontend/TransferErr;

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
    check-cast p1, Lnet/blip/libblip/frontend/TransferErr;

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
    iget-object v1, p0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 31
    .line 32
    if-eq v1, v3, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean p0, p0, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 54
    .line 55
    iget-boolean p1, p1, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 56
    .line 57
    if-eq p0, p1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
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
    iget-object v2, p0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v0

    .line 23
    mul-int/2addr v2, v1

    .line 24
    iget-object v0, p0, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Ljb;->c(Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 31
    .line 32
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v0

    .line 43
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 44
    .line 45
    return v1

    .line 46
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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "code="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lnet/blip/libblip/frontend/TransferErr;->m:Lnet/blip/libblip/frontend/TransferErr$Code;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lnet/blip/libblip/frontend/TransferErr;->n:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "msg="

    .line 28
    .line 29
    invoke-static {v1, v2, v0}, Lq;->z(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/TransferErr;->o:Z

    .line 33
    .line 34
    const-string v2, "action_required="

    .line 35
    .line 36
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    iget-boolean p0, p0, Lnet/blip/libblip/frontend/TransferErr;->p:Z

    .line 40
    .line 41
    const-string v1, "fatal="

    .line 42
    .line 43
    invoke-static {v1, p0, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/16 v5, 0x38

    .line 48
    .line 49
    const-string v1, ", "

    .line 50
    .line 51
    const-string v2, "TransferErr{"

    .line 52
    .line 53
    const-string v3, "}"

    .line 54
    .line 55
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method
