<h1 align="center">FFVDD AHP-1</h1>

<h1 align="center">Integrated Clock Gating (ICG) Design</h1>

## **I. Introduction**

The project design is based on Integrated Clock Gating. 

  In current VLSI design, the power dissipation is the most important parameter that signifies the need of low power circuits. In most of the ICs clock consumes 30-40 % of total power. So the integrated clock gating logic is used in many synchronous circuits for reducing dynamic power dissipation, by removing the clock signal when the circuit is not in use. 

**Block Diagram and Circuit Diagram**


![blockdiagram](https://user-images.githubusercontent.com/67214592/183288720-9af6827a-cbfa-4f47-8b24-2172c4f7ea01.PNG)


Clock gating is a prevailing technique for lowering clock power is done with help of clock enable signal by powering off the module by a clock. Clock gating functionally requires only an AND gate. The former using of AND gate with clock, the high EN edge may arrive at any time and may not coincide with a clock edge. In that case the output of the AND gate will be a logic ‘1’ for less time than the clock’s duty cycle, in turn end up with a glitch in the clock signal.
To avoid this, a special kind of clock gating cells are used, that synchronizes the EN with a clock edge. These are called as integrated clock gating cells or ICG. In the design gclk is available only when the latch output is high and gclk is held low when en is low as shown in the circuit diagram. Therefore, target the design very close by meeting the PPA (Power, Performance, Area).


![circuitdiagram](https://user-images.githubusercontent.com/67214592/183288729-cf1af368-8624-45e7-b864-e66ad3e6ef99.PNG)


## **II. Simulated Waveform**


![Screenshot from 2023-10-25 12-42-01](https://github.com/NandeeshaSwamy/ffvdd_ahp1_igc/assets/135737910/291ef450-0dc3-4c0c-9a38-1764d6bb2ba7)


## **III. Code Coverage**

![Screenshot from 2023-10-25 12-34-08](https://github.com/NandeeshaSwamy/ffvdd_ahp1_igc/assets/135737910/e5df746c-7c11-430d-9a50-7254d2964097)



![Screenshot from 2023-10-25 12-31-02](https://github.com/NandeeshaSwamy/ffvdd_ahp1_igc/assets/135737910/c2ec1ff2-57b4-4c0a-a01f-2ba3ee445869)
