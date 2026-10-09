.class public final enum Landroidx/compose/material/TextFieldType;
.super Ljava/lang/Enum;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/compose/material/TextFieldType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic j:[Landroidx/compose/material/TextFieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material/TextFieldType;

    .line 2
    .line 3
    const-string v1, "Filled"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/compose/material/TextFieldType;

    .line 10
    .line 11
    const-string v2, "Outlined"

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    filled-new-array {v0, v1}, [Landroidx/compose/material/TextFieldType;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/compose/material/TextFieldType;
    .locals 1

    .line 1
    const-class v0, Landroidx/compose/material/TextFieldType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/compose/material/TextFieldType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Landroidx/compose/material/TextFieldType;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Landroidx/compose/material/TextFieldType;

    .line 8
    .line 9
    return-object v0
.end method
