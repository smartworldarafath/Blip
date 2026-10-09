.class public final enum Lnet/blip/libblip/DeviceKind;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/libblip/DeviceKind$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/blip/libblip/DeviceKind;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field public static final k:Lnet/blip/libblip/DeviceKind$Companion;

.field public static final l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

.field public static final enum m:Lnet/blip/libblip/DeviceKind;

.field public static final enum n:Lnet/blip/libblip/DeviceKind;

.field public static final enum o:Lnet/blip/libblip/DeviceKind;

.field public static final enum p:Lnet/blip/libblip/DeviceKind;

.field public static final enum q:Lnet/blip/libblip/DeviceKind;

.field public static final synthetic r:[Lnet/blip/libblip/DeviceKind;


# instance fields
.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lnet/blip/libblip/DeviceKind;

    .line 2
    .line 3
    const-string v1, "GenericDevice"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lnet/blip/libblip/DeviceKind;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lnet/blip/libblip/DeviceKind;->m:Lnet/blip/libblip/DeviceKind;

    .line 10
    .line 11
    new-instance v1, Lnet/blip/libblip/DeviceKind;

    .line 12
    .line 13
    const-string v2, "Phone"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x2

    .line 17
    invoke-direct {v1, v2, v3, v4}, Lnet/blip/libblip/DeviceKind;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lnet/blip/libblip/DeviceKind;->n:Lnet/blip/libblip/DeviceKind;

    .line 21
    .line 22
    new-instance v2, Lnet/blip/libblip/DeviceKind;

    .line 23
    .line 24
    const-string v3, "Tablet"

    .line 25
    .line 26
    const/4 v5, 0x3

    .line 27
    invoke-direct {v2, v3, v4, v5}, Lnet/blip/libblip/DeviceKind;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lnet/blip/libblip/DeviceKind;->o:Lnet/blip/libblip/DeviceKind;

    .line 31
    .line 32
    new-instance v3, Lnet/blip/libblip/DeviceKind;

    .line 33
    .line 34
    const-string v4, "Laptop"

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    invoke-direct {v3, v4, v5, v6}, Lnet/blip/libblip/DeviceKind;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v3, Lnet/blip/libblip/DeviceKind;->p:Lnet/blip/libblip/DeviceKind;

    .line 41
    .line 42
    new-instance v4, Lnet/blip/libblip/DeviceKind;

    .line 43
    .line 44
    const-string v5, "Desktop"

    .line 45
    .line 46
    const/4 v7, 0x5

    .line 47
    invoke-direct {v4, v5, v6, v7}, Lnet/blip/libblip/DeviceKind;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v4, Lnet/blip/libblip/DeviceKind;->q:Lnet/blip/libblip/DeviceKind;

    .line 51
    .line 52
    filled-new-array {v0, v1, v2, v3, v4}, [Lnet/blip/libblip/DeviceKind;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    sput-object v1, Lnet/blip/libblip/DeviceKind;->r:[Lnet/blip/libblip/DeviceKind;

    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 59
    .line 60
    .line 61
    new-instance v1, Lnet/blip/libblip/DeviceKind$Companion;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 64
    .line 65
    .line 66
    sput-object v1, Lnet/blip/libblip/DeviceKind;->k:Lnet/blip/libblip/DeviceKind$Companion;

    .line 67
    .line 68
    const-class v1, Lnet/blip/libblip/DeviceKind;

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    sget-object v2, Lcom/squareup/wire/Syntax;->l:Lcom/squareup/wire/Syntax;

    .line 75
    .line 76
    new-instance v3, Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 77
    .line 78
    invoke-direct {v3, v1, v2, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Lkotlin/jvm/internal/ClassReference;Lcom/squareup/wire/Syntax;Lcom/squareup/wire/WireEnum;)V

    .line 79
    .line 80
    .line 81
    sput-object v3, Lnet/blip/libblip/DeviceKind;->l:Lnet/blip/libblip/DeviceKind$Companion$ADAPTER$1;

    .line 82
    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lnet/blip/libblip/DeviceKind;->j:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/blip/libblip/DeviceKind;
    .locals 1

    .line 1
    const-class v0, Lnet/blip/libblip/DeviceKind;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/libblip/DeviceKind;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lnet/blip/libblip/DeviceKind;
    .locals 1

    .line 1
    sget-object v0, Lnet/blip/libblip/DeviceKind;->r:[Lnet/blip/libblip/DeviceKind;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lnet/blip/libblip/DeviceKind;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lnet/blip/libblip/DeviceKind;->j:I

    .line 2
    .line 3
    return p0
.end method
