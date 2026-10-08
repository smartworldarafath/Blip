.class public final enum Lnet/blip/libblip/frontend/Registration$registration_status;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/blip/libblip/frontend/Registration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "registration_status"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/frontend/Registration$registration_status$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/blip/libblip/frontend/Registration$registration_status;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field public static final k:Lnet/blip/libblip/frontend/Registration$registration_status$Companion;

.field public static final l:Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

.field public static final enum m:Lnet/blip/libblip/frontend/Registration$registration_status;

.field public static final enum n:Lnet/blip/libblip/frontend/Registration$registration_status;

.field public static final enum o:Lnet/blip/libblip/frontend/Registration$registration_status;

.field public static final enum p:Lnet/blip/libblip/frontend/Registration$registration_status;

.field public static final synthetic q:[Lnet/blip/libblip/frontend/Registration$registration_status;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 2
    .line 3
    const-string v1, "NOT_STARTED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lnet/blip/libblip/frontend/Registration$registration_status;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/blip/libblip/frontend/Registration$registration_status;->m:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 10
    .line 11
    new-instance v1, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 12
    .line 13
    const-string v2, "SENDING_CODE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3, v3}, Lnet/blip/libblip/frontend/Registration$registration_status;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lnet/blip/libblip/frontend/Registration$registration_status;->n:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 20
    .line 21
    new-instance v2, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 22
    .line 23
    const-string v3, "CODE_SENT"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4, v4}, Lnet/blip/libblip/frontend/Registration$registration_status;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lnet/blip/libblip/frontend/Registration$registration_status;->o:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 30
    .line 31
    new-instance v3, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 32
    .line 33
    const-string v4, "REGISTERING"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5, v5}, Lnet/blip/libblip/frontend/Registration$registration_status;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Lnet/blip/libblip/frontend/Registration$registration_status;->p:Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lnet/blip/libblip/frontend/Registration$registration_status;->q:[Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lnet/blip/libblip/frontend/Registration$registration_status$Companion;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v1, Lnet/blip/libblip/frontend/Registration$registration_status;->k:Lnet/blip/libblip/frontend/Registration$registration_status$Companion;

    .line 56
    .line 57
    const-class v1, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 58
    .line 59
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 64
    .line 65
    new-instance v3, Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

    .line 66
    .line 67
    invoke-direct {v3, v1, v2, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/jvm/internal/ClassReference;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    .line 68
    .line 69
    .line 70
    sput-object v3, Lnet/blip/libblip/frontend/Registration$registration_status;->l:Lnet/blip/libblip/frontend/Registration$registration_status$Companion$ADAPTER$1;

    .line 71
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/blip/libblip/frontend/Registration$registration_status;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/blip/libblip/frontend/Registration$registration_status;
    .locals 1

    .line 1
    const-class v0, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/blip/libblip/frontend/Registration$registration_status;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/libblip/frontend/Registration$registration_status;->q:[Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/blip/libblip/frontend/Registration$registration_status;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/blip/libblip/frontend/Registration$registration_status;->j:I

    .line 2
    .line 3
    return p0
.end method
