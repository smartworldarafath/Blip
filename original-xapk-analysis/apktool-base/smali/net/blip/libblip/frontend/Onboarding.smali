.class public final Lnet/blip/libblip/frontend/Onboarding;
.super Lcom/squareup/wire/Message;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/frontend/Onboarding$Step;
    }
.end annotation


# static fields
.field public static final s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;


# instance fields
.field public final m:Lnet/blip/libblip/frontend/Onboarding$Step;

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v1, Lcom/squareup/wire/FieldEncoding;->m:Lcom/squareup/wire/FieldEncoding;

    .line 2
    .line 3
    const-class v0, Lnet/blip/libblip/frontend/Onboarding;

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
    new-instance v0, Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const-string v3, "type.googleapis.com/frontend.Onboarding"

    .line 16
    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Ljava/lang/String;Lcom/squareup/wire/Syntax;Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lnet/blip/libblip/frontend/Onboarding;->s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lnet/blip/libblip/frontend/Onboarding$Step;ZZZZZLokio/ByteString;)V
    .locals 1

    .line 1
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lnet/blip/libblip/frontend/Onboarding;->s:Lnet/blip/libblip/frontend/Onboarding$Companion$ADAPTER$1;

    .line 5
    .line 6
    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 10
    .line 11
    iput-boolean p2, p0, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 12
    .line 13
    iput-boolean p3, p0, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 14
    .line 15
    iput-boolean p4, p0, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 16
    .line 17
    iput-boolean p5, p0, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 18
    .line 19
    iput-boolean p6, p0, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 20
    .line 21
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
    instance-of v1, p1, Lnet/blip/libblip/frontend/Onboarding;

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
    check-cast p1, Lnet/blip/libblip/frontend/Onboarding;

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
    iget-object v1, p0, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 29
    .line 30
    iget-object v3, p1, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

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
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 40
    .line 41
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 42
    .line 43
    if-eq v1, v3, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 47
    .line 48
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 54
    .line 55
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 61
    .line 62
    iget-boolean v3, p1, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 63
    .line 64
    if-eq v1, v3, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-boolean p0, p0, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 68
    .line 69
    iget-boolean p1, p1, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 70
    .line 71
    if-eq p0, p1, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->l:I

    .line 2
    .line 3
    if-nez v0, :cond_1

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
    iget-object v2, p0, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Lnet/blip/libblip/frontend/Onboarding$Step;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    add-int/2addr v0, v2

    .line 27
    mul-int/2addr v0, v1

    .line 28
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iget-boolean v2, p0, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 47
    .line 48
    invoke-static {v0, v1, v2}, Ljb;->b(IIZ)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    add-int/2addr v1, v0

    .line 59
    iput v1, p0, Lcom/squareup/wire/Message;->l:I

    .line 60
    .line 61
    return v1

    .line 62
    :cond_1
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
    iget-object v1, p0, Lnet/blip/libblip/frontend/Onboarding;->m:Lnet/blip/libblip/frontend/Onboarding$Step;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "current_step="

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->n:Z

    .line 28
    .line 29
    const-string v2, "did_skip_splash="

    .line 30
    .line 31
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->o:Z

    .line 35
    .line 36
    const-string v2, "did_skip_companion_device_setup="

    .line 37
    .line 38
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->p:Z

    .line 42
    .line 43
    const-string v2, "did_skip_enable_notifications="

    .line 44
    .line 45
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lnet/blip/libblip/frontend/Onboarding;->q:Z

    .line 49
    .line 50
    const-string v2, "did_skip_enable_media_library="

    .line 51
    .line 52
    invoke-static {v2, v1, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 53
    .line 54
    .line 55
    iget-boolean p0, p0, Lnet/blip/libblip/frontend/Onboarding;->r:Z

    .line 56
    .line 57
    const-string v1, "did_skip_share_instructions="

    .line 58
    .line 59
    invoke-static {v1, p0, v0}, Lq;->A(Ljava/lang/String;ZLjava/util/ArrayList;)V

    .line 60
    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/16 v5, 0x38

    .line 64
    .line 65
    const-string v1, ", "

    .line 66
    .line 67
    const-string v2, "Onboarding{"

    .line 68
    .line 69
    const-string v3, "}"

    .line 70
    .line 71
    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt;->y(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
