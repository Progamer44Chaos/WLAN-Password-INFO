# WLAN-Password-INFO

## Beschreibung

Dieses Batch-Skript ermöglicht es, die gespeicherten WLAN-Profile und deren Passwörter auf einem Windows-System anzuzeigen. Es verwendet den Befehl `netsh wlan show profiles`, um verfügbare WLAN-Profile aufzulisten und detaillierte Informationen zu einem bestimmten WLAN-Profil (inklusive gespeicherten Passworts) abzurufen.

### Voraussetzungen

- Das Skript muss **mit Administratorrechten** ausgeführt werden.
- Das WLAN-Profil, dessen Informationen angezeigt werden sollen, muss auf dem Computer lokal gespeichert sein.

---

## Funktionsweise

1. **Anzeige der gespeicherten WLAN-Profile**:
   - Das Skript listet alle auf dem System gespeicherten WLAN-Profile auf.

2. **Eingabe des Netzwerknamens (SSID)**:
   - Der Benutzer wird aufgefordert, den Namen eines Netzwerks (SSID) aus der Liste einzugeben.

3. **Abrufen von Informationen**:
   - Das Skript zeigt die gespeicherten Informationen des angegebenen Netzwerks an, einschließlich des Passworts (falls gespeichert). Das Passwort erscheint unter dem Feld `Schlüsselinhalt`.

4. **Fehlerbehandlung**:
   - Wenn das Netzwerkprofil nicht existiert oder keine Informationen verfügbar sind, zeigt das Skript eine entsprechende Fehlermeldung an.

---

## Nutzung

1. **Batch-Datei ausführen**:
   - Rechtsklick auf die Datei und "Als Administrator ausführen" auswählen.

2. **Ablauf**:
   - Nach dem Start werden alle gespeicherten WLAN-Profile angezeigt.
   - Gib den gewünschten Netzwerk-Namen (SSID) ein.
   - Das Skript zeigt die entsprechenden Informationen an, einschließlich des Passworts (falls verfügbar).

3. **Beispielausgabe**:
   ```
   Verfügbare WLAN-Profile:
   Profil 1: MeinWLAN
   Profil 2: GästeWLAN

   Bitte gib den Namen des Netzwerks (SSID) ein: MeinWLAN

   Informationen für das Netzwerk "MeinWLAN":
   Schlüsselinhalt = MeinPasswort123
   ```

---

## Hinweise

- **Passwörter anzeigen**: Das Feld `Schlüsselinhalt` enthält das gespeicherte Passwort, falls verfügbar.
- **Berechtigungen**: Das Skript benötigt Administratorrechte, um auf die gespeicherten Netzwerk-Informationen zugreifen zu können.
- **Sprache des Systems**: Auf nicht-deutschen Windows-Systemen könnte `Schlüsselinhalt` als `Key Content` angezeigt werden.

---

## Haftungsausschluss

Dieses Skript ist nur für den privaten Gebrauch gedacht. Es sollte nicht für unbefugten Zugriff auf Netzwerke verwendet werden. Der Autor übernimmt keine Haftung für den Missbrauch des Skripts.

---
