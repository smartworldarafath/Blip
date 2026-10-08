.class final enum Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/input/TextInputServiceAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextInputCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum j:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

.field public static final enum k:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

.field public static final enum l:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

.field public static final enum m:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

.field public static final synthetic n:[Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 2
    .line 3
    const-string v1, "StartInput"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->j:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 12
    .line 13
    const-string v2, "StopInput"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->k:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 20
    .line 21
    new-instance v2, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 22
    .line 23
    const-string v3, "ShowKeyboard"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->l:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 30
    .line 31
    new-instance v3, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 32
    .line 33
    const-string v4, "HideKeyboard"

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v3, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->m:Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 40
    .line 41
    filled-new-array {v0, v1, v2, v3}, [Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->n:[Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;
    .locals 1

    .line 1
    const-class v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;->n:[Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/compose/ui/text/input/TextInputServiceAndroid$TextInputCommand;

    .line 8
    .line 9
    return-object v0
.end method
